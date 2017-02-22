package ${viperPackage}.presenter

import android.support.annotation.NonNull

import com.mateuszkoslacz.moviper.base.presenter.BasePresenter
import ${viperPackage}.contract.${prefix}Contract
import ${viperPackage}.routing.${prefix}Routing
import ${viperPackage}.interactor.${prefix}Interactor

class ${prefix}Presenter : BasePresenter
        <${prefix}Contract.View,
                ${prefix}Contract.Interactor,
                ${prefix}Contract.Routing>(),
        ${prefix}Contract.Presenter,
        ${prefix}Contract.PresenterForInteractor,
        ${prefix}Contract.PresenterForRouting {

    fun createRouting(): ${prefix}Contract.Routing {
        return ${prefix}Routing()
    }

    fun createInteractor(): ${prefix}Contract.Interactor {
        return ${prefix}Interactor()
    }
}
