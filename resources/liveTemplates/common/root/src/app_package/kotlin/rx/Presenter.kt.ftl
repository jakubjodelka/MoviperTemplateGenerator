package ${viperPackage}.presenter;

import android.support.annotation.NonNull;

import com.mateuszkoslacz.moviper.base.presenter.BaseRxPresenter;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.routing.${prefix}Routing;
import ${viperPackage}.interactor.${prefix}Interactor;

class ${prefix}Presenter : BaseRxPresenter
        <${prefix}Contract.View,
                ${prefix}Contract.Interactor,
                ${prefix}Contract.Routing>(),
        ${prefix}Contract.Presenter {

    override fun createRouting(): ${prefix}Contract.Routing {
        return ${prefix}Routing()
    }

    override fun createInteractor(): ${prefix}Contract.Interactor {
        return ${prefix}Interactor()
    }
}
