({
  invoke: function (component) {
    let js = component.get("v.js");
    let showError = component.get("v.showErrorToast");
    try {
      let args = JSON.parse(component.get("v.args") || "{}");
      let op = Function("args", `${js}`)(args);
      if (Array.isArray(op)) component.set("v.outputArray", op);
      else component.set("v.output", op);
    } catch (err) {
      console.error(err);
      if (showError) {
        //eslint-disable-next-line
        let toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({ title: "Error!", message: err.message });
        toastEvent.fire();
      }
      throw err;
    }
  }
});
