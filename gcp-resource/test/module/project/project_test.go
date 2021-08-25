package test

import (
	"fmt"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestProjectModule(t *testing.T) {
	opts := &terraform.Options{
		TerraformDir: "../../../module/project",

		Vars: map[string]interface{}{
			"project_name": "terraform-unit-test",
			"project_id":   "terraform-unit-test-dev01",
		},

		Upgrade: true,
	}

	// terraform.Init(t, opts)
	// terraform.Apply(t, opts)

	//clearUp evething at end of the test
	defer terraform.Destroy(t, opts)

	//Deploy this example
	terraform.InitAndApply(t, opts)

	//Get project_id
	projectId := terraform.OutputRequired(t, opts, "project_id")

	fmt.Printf("The project id is %s", projectId)
}
