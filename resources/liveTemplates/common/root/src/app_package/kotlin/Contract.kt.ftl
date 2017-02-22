package ${viperPackage}.contract

import com.hannesdorfmann.mosby.mvp.MvpView
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter
import com.mateuszkoslacz.moviper.iface.interactor.ViperInteractor
import com.mateuszkoslacz.moviper.iface.presenter.routing.ViperPresenterForRouting
import com.mateuszkoslacz.moviper.iface.routing.ViperRouting
import com.mateuszkoslacz.moviper.iface.presenter.interactor.ViperPresenterForInteractor

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

    interface Routing : ViperRouting<PresenterForRouting> {

    }

    interface PresenterForRouting : ViperPresenterForRouting<Routing> {

    }
}
