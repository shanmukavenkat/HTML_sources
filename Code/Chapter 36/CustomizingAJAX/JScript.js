Type.registerNamespace("CustomAJAXControl");
// Constructor
CustomAJAXControl.CustomButton = function (element) {
    CustomAJAXControl.CustomButton.initializeBase(this, [element]);
    this._clickDelegate = null;
    this._driftDelegate = null;
    this._undriftDelegate = null;
}
CustomAJAXControl.CustomButton.prototype =
{
    // text property accessors.
    get_text: function () {
        return this.get_element().innerHTML;
    },
    set_text: function (value) {
        this.get_element().innerHTML = value;
    },
    // Bind and unbind to click event.
    add_click: function (handler) {
        this.get_events().addHandler('click', handler);
    },
    remove_click: function (handler) {
        this.get_events().removeHandler('click', handler);
    },
    // Bind and unbind to drift event.
    add_drift: function (handler) {
        this.get_events().addHandler('drift', handler);
    },
    remove_drift: function (handler) {
        this.get_events().removeHandler('drift', handler);
    },
    // Bind and unbind to undrift event.
    add_undrift: function (handler) {
        this.get_events().addHandler('undrift', handler);
    },
    remove_undrift: function (handler) {
        this.get_events().removeHandler('undrift', handler);
    },
    // Release resources before control is disposed.
    dispose: function () {
        var element = this.get_element();
        if (this._clickDelegate) {
            Sys.UI.DomEvent.removeHandler(element, 'click', this._clickDelegate);
            delete this._clickDelegate;
        }
        if (this._driftDelegate) {
            Sys.UI.DomEvent.removeHandler(element, 'focus', this._driftDelegate);
            Sys.UI.DomEvent.removeHandler(element, 'mouseover', this._driftDelegate);
            delete this._driftDelegate;
        }
        if (this._undriftDelegate) {
            Sys.UI.DomEvent.removeHandler(element, 'blur', this._undriftDelegate);
            Sys.UI.DomEvent.removeHandler(element, 'mouseout',
 			this._undriftDelegate);
            delete this._undriftDelegate;
        }
        CustomAJAXControl.CustomButton.callBaseMethod(this, 'dispose');
    },
    initialize: function () {
        var element = this.get_element();
        if (!element.tabIndex) element.tabIndex = 0;
        if (this._clickDelegate === null) 
        {
            this._clickDelegate = Function.createDelegate(this, this._clickHandler);
        }
        Sys.UI.DomEvent.addHandler(element, 'click', this._clickDelegate);
        if (this._driftDelegate === null)
         {
            this._driftDelegate = Function.createDelegate(this, this._driftHandler);
        }
        Sys.UI.DomEvent.addHandler(element, 'mouseover', this._driftDelegate);
        Sys.UI.DomEvent.addHandler(element, 'focus', this._driftDelegate);
        if (this._undriftDelegate === null) 
        {
            this._undriftDelegate = Function.createDelegate(this,
 			this._undriftHandler);
        }
        Sys.UI.DomEvent.addHandler(element, 'mouseout', this._undriftDelegate);
        Sys.UI.DomEvent.addHandler(element, 'blur', this._undriftDelegate);
        CustomAJAXControl.CustomButton.callBaseMethod(this, 'initialize');
    },
    _clickHandler: function (event) {
        var h = this.get_events().getHandler('click');
        if (h) h(this, Sys.EventArgs.Empty);
    },
    _driftHandler: function (event) {
        var h = this.get_events().getHandler('drift');
        if (h) h(this, Sys.EventArgs.Empty);
    },
    _undriftHandler: function (event) {
        var h = this.get_events().getHandler('undrift');
        if (h) h(this, Sys.EventArgs.Empty);
    }
}
CustomAJAXControl.CustomButton.registerClass('CustomAJAXControl.CustomButton',Sys.UI.Control);
if (typeof (Sys) !== 'undefined') Sys.Application.notifyScriptLoaded();
