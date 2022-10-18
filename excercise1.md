### Essay

The languages "we" are using is C#. We'll be using .Net framework. C# has multiple different linting tools. E.g. dotnet-format, SonarLint and StyleCop. We'll use dotnet-format since we are familiar with it. 

For Unit testing, we'll be using xUnit, as it is the most common option. For integration testing, we'll use Microsoft.AspNetCore.Mvc.Testing package. We could do some end-to-end testing with e.g. robot framework. We could spin up the whole stack using docker in CI/CD and run the test against the whole system.

Dotnet sdk is basically always used to build .Net projects so we don't have a reason to use anything else. We are also going to containerize our project(s). 

We'll be using either GitLab or Azure DevOps for CI/CD purposes. Azure DevOps has a lot of more features than GitLab. On the other hand, GitLab can be deployed to own premises more easily and it is open-source.

To make a decision on CI/CD system, one would need to know the project and company size. Azure DevOps could be a good option in a large company, as it provides some useful tools which are not available on GitLab. GitLab could be cheaper to use because if the company is small, we could use GitLab on cloud. There is some other options such as TeamCity or Spinnaker, which we could look into.  

Words: 224
