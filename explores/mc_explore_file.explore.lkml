include: "/views/dept.view.lkml"
include: "/views/emp_sal.view.lkml"
include: "/views/expence.view.lkml"
include: "/views/mc_derivedtable.view.lkml"

explore: dept {
  join: emp_sal {
    type: left_outer
    relationship: many_to_one
    sql_on: ${emp_sal.id} = ${dept.emp_id} ;;
  }

  join: expence {
    type: left_outer
    relationship: many_to_one
    sql_on: ${expence.expid} = ${dept.emp_id} ;;
  }

}
