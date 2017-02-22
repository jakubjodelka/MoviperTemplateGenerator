package ${viperPackage}.contract

import com.hannesdorfmann.mosby.mvp.MvpView
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter
import com.mateuszkoslacz.moviper.iface.interactor.ViperRxInteractor
import com.mateuszkoslacz.moviper.iface.routing.ViperViewHelperRxRouting
import com.mateuszkoslacz.moviper.iface.viewhelper.ViperViewHelper

interface ${prefix}Contract {

    interface Presenter : ViperPresenter<View> {

    }

    interface View : MvpView {
        <#if viewState>interface State {  
            fun setState(state: Int);
        }</#if>
    }

    interface Interactor : ViperRxInteractor {

    }

    interface Routing : ViperViewHelperRxRouting<ViewHelper> {

    }

    interface ViewHelper : ViperViewHelper {

    }
}

