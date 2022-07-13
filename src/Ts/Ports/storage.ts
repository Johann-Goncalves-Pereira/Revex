//? Port To get Storage
export function Storage(app: any) {
  app.ports.save.subscribe((storage: JSON) => {
    localStorage.setItem("storage", JSON.stringify(storage));
    app.ports.load.send(storage);
  });
}
