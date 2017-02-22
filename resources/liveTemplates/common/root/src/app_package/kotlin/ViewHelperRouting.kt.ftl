package ${viperPackage}.routing

import com.mateuszkoslacz.moviper.base.routing.BaseViewHelperRouting
import ${viperPackage}.contract.${prefix}Contract

class ${prefix}Routing : BaseViewHelperRouting
        <${prefix}Contract.PresenterForRouting,
        		${prefix}Contract.ViewHelper>(),
        ${prefix}Contract.Routing {

}
