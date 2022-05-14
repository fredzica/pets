import React, { useState, useEffect } from "react";
import axios from "axios";

const Pets = () => {
  const [pets, setPets] = useState([]);

  useEffect(() => {
    //retrieve pets and update our state with them

    axios
      .get("/api/v1/pets")
      .then((resp) => setPets(resp.data.pets))
      .catch((resp) => console.log(resp));
  }, [pets.length]);

  const list = pets.map((pet) => {
    return <li key={pet.name}>{pet.name}</li>;
  });

  return (
    <>
      <div>This is the Pets view</div>
      <ul>{list}</ul>
    </>
  );
};

export default Pets;
