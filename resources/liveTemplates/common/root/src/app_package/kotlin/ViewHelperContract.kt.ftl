package ${viperPackage}.contract

import com.hannesdorfmann.mosby.mvp.MvpView
import com.mateuszkoslacz.moviper.iface.interactor.ViperInteractor
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter
import com.mateuszkoslacz.moviper.iface.presenter.interactor.ViperPresenterForInteractor
import com.mateuszkoslacz.moviper.iface.presenter.routing.ViperPresenterForRouting
import com.mateuszkoslacz.moviper.iface.routing.ViperViewHelperRouting
import com.mateuszkoslacz.moviper.iface.viewhelper.ViperViewHelper

interface ${prefix}Contract {

    interface Presenter : ViperPresenter<View> {

    }

    interface View : MvpView {
        <#if viewState>interface State {  
            fun setState(state: Int)
        }</#if>  
    }

    interface Interactor : ViperInteractor<PresenterForInteractor> {

    }

    interface PresenterForInteractor : ViperPresenterForInteractor<Interactor> {

    }

    interface Routing : ViperViewHelperRouting<PresenterForRouting, ViewHelper> {

    }

    interface PresenterForRouting : ViperPresenterForRouting<Routing> {

    }

    interface ViewHelper : ViperViewHelper {

    }
}
