##### Status-Codes

| Code | Meaning |
|------|---------|
| <span class="green">200</span> | Request successful |
| <span class="green">201</span> | Created |
| <span class="green">204</span> | No Content |
| <span class="red">400</span> | Bad Request |
| <span class="red">401</span> | Unauthorized |
| <span class="red">403</span> | Forbidden |
| <span class="red">404</span> | Not found |
| <span class="red">500</span> | Internal Server Error |
| <span class="blue">501</span> | Not implemented |


##### Authentication

| Abbreviation | Description |
|--------------|-------------|
| `PA` | Public access |
| `UT` | User-Access-Token needed |
| `AT` | Admin-Access-Token needed |
| `AO` | Admin only |


##### Endpoints

| Code | Endpoint | Method | Headers | Query |
|------|----------|--------|---------|-------|
| <span class="green">200</span> | `/api/login` | **POST** | PA |