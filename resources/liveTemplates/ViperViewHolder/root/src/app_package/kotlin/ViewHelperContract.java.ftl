package ${viperPackage}.contract

import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter
import com.mateuszkoslacz.moviper.iface.view.MvpDataView
import com.mateuszkoslacz.moviper.iface.viewhelper.ViperViewHelper
import com.mateuszkoslacz.moviper.iface.interactor.ViperRxInteractor
import com.mateuszkoslacz.moviper.iface.routing.ViperViewHelperRxRouting
<#if createEntity>
import ${viperPackage}.entity.${prefix}
</#if>
interface ${prefix}Contract {

    interface Presenter : ViperPresenter<View> {

    }

    interface View : MvpDataView<<#if createEntity>${prefix}<#else>Object/*TODO: Change to your own entity*/</#if>> {

    }

    interface Interactor : ViperRxInteractor {

    }

    interface Routing : ViperViewHelperRxRouting<ViewHelper> {

    }

    interface ViewHelper : ViperViewHelper {

    }

}
