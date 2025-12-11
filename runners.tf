
locals {
  repo_policy_url   = "https://repo-policy-compliance.canonical.com"
  repo_policy_token = data.vault_generic_secret.repo_policy_token.data["token"]

  charm_revision      = 455
  charm_channel       = "latest/stable"
  beta_charm_revision = 455
  beta_charm_channel  = "latest/edge"
  # renovate: depName="github-runner"
  edge_charm_revision                  = 461
  edge_charm_channel                   = "latest/edge"
  github_runner_path                   = "canonical"
  github_runner_group                  = "Canonical self-hosted runners"
  github_runner_token_a                = data.vault_generic_secret.ps6_github_personal_access_token_a_exp_2026_06_12.data["token"]
  github_runner_token_b                = data.vault_generic_secret.ps6_github_personal_access_token_b_exp_2026_06_12.data["token"]
  github_runner_token_c                = data.vault_generic_secret.ps6_github_personal_access_token_c_exp_2026_06_12.data["token"]
  github_runner_manager_constraints    = "arch=amd64 cores=2 mem=8192M root-disk=28672M"
  github_runner_private_endpoint_group = "private-endpoint"
  github_runner_pfe_ci_group           = "pfe-github-runners (cRT#192572)"
}
