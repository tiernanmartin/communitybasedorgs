
# PROJECT PLAN ------------------------------------------------------------

#' @title Get the Project Plan
#' @description Use \code{\link[drake]{drake_plan}} to create the project
#'   plan.
#' @return  a \code{drake} plan

#' @export
get_project_plan <- function(){

  project_plan <- drake::drake_plan(
    p1 = rnorm(10) # placeholder target
  )

  return(project_plan)

}

# DATA PLAN ---------------------------------------------------------------


#' @title Get the Data Plan
#' @description Use \code{\link[drake]{drake_plan}} to create the data
#'   plan.
#' @return  a \code{drake} plan

#' @export
get_data_plan <- function(){

  data_plan <- drake::drake_plan(
    d1 = rnorm(10) # placeholder target
  )

  return(data_plan)

}

# WORKFLOW PLAN -----------------------------------------------------------

#' @title Get the Workflow Plan
#' @description Use \code{\link[drake]{drake_plan}} to create the workflow
#'   plan.
#' @return  a \code{drake} plan

#' @export
get_workflow_plan <- function(){

  workflow_plan <- drake::bind_plans(
    get_project_plan(),
    get_data_plan()
  )

  return(workflow_plan)

}
