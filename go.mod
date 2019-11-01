module github.com/vmware-tanzu/velero

go 1.13

require (
	cloud.google.com/go v0.46.2
	github.com/Azure/azure-sdk-for-go v21.4.0+incompatible
	github.com/Azure/go-autorest v11.1.2+incompatible
	github.com/aws/aws-sdk-go v1.16.26
	github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973
	github.com/davecgh/go-spew v1.1.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/docker/spdystream v0.0.0-20170912183627-bc6354cbbc29
	github.com/evanphx/json-patch v0.0.0-20190203023257-5858425f7550
	github.com/go-ini/ini v1.28.2
	github.com/gobwas/glob v0.2.3
	github.com/gogo/protobuf v0.0.0-20171007142547-342cbe0a0415
	github.com/golang/protobuf v1.3.2
	github.com/google/go-cmp v0.3.1
	github.com/google/gofuzz v0.0.0-20170612174753-24818f796faf
	github.com/googleapis/gnostic v0.1.0
	github.com/hashicorp/go-hclog v0.0.0-20180709165350-ff2cf002a8dd
	github.com/hashicorp/go-plugin v1.0.1-0.20190610192547-a1bc61569a26
	github.com/hashicorp/golang-lru v0.5.1
	github.com/hashicorp/yamux v0.0.0-20180604194846-3520598351bb
	github.com/imdario/mergo v0.3.5
	github.com/inconshreveable/mousetrap v1.0.0
	github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af
	github.com/joho/godotenv v1.3.0
	github.com/json-iterator/go v0.0.0-20180701071628-ab8a2e0c74be
	github.com/liggitt/tabwriter v0.0.0-20181228230101-89fcab3d43de
	github.com/matttproud/golang_protobuf_extensions v1.0.1
	github.com/mitchellh/go-testing-interface v0.0.0-20171004221916-a61a99592b77
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd
	github.com/modern-go/reflect2 v1.0.1
	github.com/oklog/run v1.0.0
	github.com/pkg/errors v0.8.0
	github.com/pmezard/go-difflib v1.0.0
	github.com/prometheus/client_golang v0.9.2
	github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910
	github.com/prometheus/common v0.0.0-20181126121408-4724e9255275
	github.com/prometheus/procfs v0.0.0-20181204211112-1dc9a6cbc91a
	github.com/robfig/cron v1.0.1-0.20170309132418-df38d32658d8
	github.com/satori/go.uuid v1.2.0
	github.com/sirupsen/logrus v1.2.0
	github.com/spf13/afero v0.0.0-20170217164146-9be650865eab
	github.com/spf13/cobra v0.0.3
	github.com/spf13/pflag v1.0.2
	github.com/stretchr/objx v0.1.1
	github.com/stretchr/testify v1.3.0
	golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5
	golang.org/x/net v0.0.0-20190812203447-cdfb69ac37fc
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45
	golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0
	golang.org/x/text v0.3.2
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4
	google.golang.org/appengine v1.6.1
	google.golang.org/genproto v0.0.0-20190911173649-1774047e7e51
	google.golang.org/grpc v1.21.1
	gopkg.in/inf.v0 v0.9.0
	gopkg.in/yaml.v2 v2.2.1
	k8s.io/api v0.0.0
	k8s.io/apiextensions-apiserver v0.0.0
	k8s.io/apimachinery v0.0.0
	k8s.io/client-go v0.0.0
	k8s.io/klog v0.3.1
	k8s.io/kube-openapi v0.0.0-20190228160746-b3a7cee44a30
	k8s.io/kubernetes v1.15.3
	// k8s.io/kubernetes v1.15.3
	k8s.io/utils v0.0.0-20190308190857-21c4ce38f2a7
	sigs.k8s.io/yaml v1.1.0
)

replace k8s.io/api => k8s.io/api v0.0.0-20190819141258-3544db3b9e44

replace k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.0.0-20190819143637-0dbe462fe92d

replace k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20190817020851-f2f3a405f61d

replace k8s.io/apiserver => k8s.io/apiserver v0.0.0-20190819142446-92cc630367d0

replace k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20190819144027-541433d7ce35

replace k8s.io/client-go => k8s.io/client-go v0.0.0-20190819141724-e14f31a72a77

replace k8s.io/cloud-provider => k8s.io/cloud-provider v0.0.0-20190819145148-d91c85d212d5

replace k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.0.0-20190819145008-029dd04813af

replace k8s.io/code-generator => k8s.io/code-generator v0.0.0-20190612205613-18da4a14b22b

replace k8s.io/component-base => k8s.io/component-base v0.0.0-20190819141909-f0f7c184477d

replace k8s.io/cri-api => k8s.io/cri-api v0.0.0-20190817025403-3ae76f584e79

replace k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.0.0-20190819145328-4831a4ced492

replace k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.0.0-20190819142756-13daafd3604f

replace k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.0.0-20190819144832-f53437941eef

replace k8s.io/kube-proxy => k8s.io/kube-proxy v0.0.0-20190819144346-2e47de1df0f0

replace k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.0.0-20190819144657-d1a724e0828e

replace k8s.io/kubectl => k8s.io/kubectl v0.0.0-20190602132728-7075c07e78bf

replace k8s.io/kubelet => k8s.io/kubelet v0.0.0-20190819144524-827174bad5e8

replace k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.0.0-20190819145509-592c9a46fd00

replace k8s.io/metrics => k8s.io/metrics v0.0.0-20190819143841-305e1cef1ab1

replace k8s.io/node-api => k8s.io/node-api v0.0.0-20190819145652-b61681edbd0a

replace k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.0.0-20190819143045-c84c31c165c4

replace k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.0.0-20190819144209-f9ca4b649af0

replace k8s.io/sample-controller => k8s.io/sample-controller v0.0.0-20190819143301-7c475f5e1313
