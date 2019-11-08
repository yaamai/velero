TARGET_ARCH_LIST = ["amd64", "arm64", "arm"]

def main(ctx):
  pipeline_list = []
  pipeline_list.extend([pipeline(arch) for arch in TARGET_ARCH_LIST])
  pipeline_list.append(docker_manifest())
  return pipeline_list

def pipeline(arch):
  return {
    "kind": "pipeline",
    "type": "docker",
    "name": "default-" + arch,
    "platform": {
      "arch": arch
    },
    "steps": [
      {
        "name": "build",
        "image": "golang:1.13",
        "commands": [
          "ls",
          "git log -3",
          "git status",
          "git remote -v",
          "PKG=velero BIN=velero GOOS=linux GOARCH={} VERSION=master ./hack/build.sh".format(arch),
          "PKG=velero-restic-restore-helper BIN=velero GOOS=linux GOARCH={} VERSION=master ./hack/build.sh".format(arch)
        ]
      },
      {
        "name": "image-build",
        "image": "plugins/docker",
        "settings": {
          "username": {
            "from_secret": "docker_username"
          },
          "password": {
            "from_secret": "docker_password"
          },
          "repo": "yaamai/velero",
          "auto_tag": True,
          "auto_tag_suffix": "${DRONE_STAGE_ARCH}",
          "dockerfile": "Dockerfile-velero",
          "build_args": [
            "ARCH={}".format(arch)
          ]
        }
      },
      {
        "name": "image-build",
        "image": "plugins/docker",
        "settings": {
          "username": {
            "from_secret": "docker_username"
          },
          "password": {
            "from_secret": "docker_password"
          },
          "repo": "yaamai/velero-restic-restore-helper",
          "auto_tag": True,
          "auto_tag_suffix": "${DRONE_STAGE_ARCH}",
          "dockerfile": "Dockerfile-velero-restic-restore-helper"
        }
      }
    ]
  }

def docker_manifest():
  return {
    "kind": "pipeline",
    "type": "docker",
    "name": "manifest",
    "steps": [
      {
        "name": "push-manifest",
        "image": "plugins/manifest",
        "settings": {
          "username": {
            "from_secret": "docker_username"
          },
          "password": {
            "from_secret": "docker_password"
          },
          "target": "yaamai/velero:latest",
          "template": "yaamai/velero:ARCH",
          "platforms": [
            "linux/amd64",
            "linux/arm",
            "linux/arm64"
          ]
        }
      },
      {
        "name": "push-manifest",
        "image": "plugins/manifest",
        "settings": {
          "username": {
            "from_secret": "docker_username"
          },
          "password": {
            "from_secret": "docker_password"
          },
          "target": "yaamai/velero-restic-restore-helper",
          "template": "yaamai/velero-restic-restore-helper:ARCH",
          "platforms": [
            "linux/amd64",
            "linux/arm",
            "linux/arm64"
          ]
        }
      }
    ],
    "depends_on": ["default-" + arch for arch in TARGET_ARCH_LIST]
  }
