module uim.business.base.entity;

import uim.business;

template Entity() {
  const char[] Entity = `
    override Json toJSON() {
      return serializeToJson(this);
    }
  `;
}