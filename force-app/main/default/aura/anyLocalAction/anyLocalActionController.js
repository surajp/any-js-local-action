({
  invoke: function (component, event, helper) {
    let js = component.get("v.js");
    let args = JSON.parse(component.get("v.args") || "{}");
    let op = Function("args", `${js}`)(args);
    if (Array.isArray(op)) component.set("v.outputArray", op);
    else component.set("v.output", op);
  }
});
