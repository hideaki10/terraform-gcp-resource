package test

import (
	"fmt"
	"strings"
	"testing"

	"github.com/gruntwork-io/terratest/modules/gcp"
	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestProjectModule(t *testing.T) {
	expectedName := fmt.Sprintf("test-%s", strings.ToLower(random.UniqueId()))
	opts := &terraform.Options{
		TerraformDir: "../../../module/project/example",

		Vars: map[string]interface{}{

			"gcp_project_name": expectedName,
			"gcp_project_id":   expectedName + "-dev",
		},
	}

	defer terraform.Destroy(t, opts)

	//Deploy this example
	_ = terraform.InitAndApply(t, opts)

	//Get project_id
	got := terraform.OutputRequired(t, opts, "project_id")

	if got != expectedName+"-dev" {
		t.Errorf("got: %s, want: %s", got, expectedName+"-dev")
	}

	_ = gcp.GetBuilds(t, expectedName+"-dev")
}
