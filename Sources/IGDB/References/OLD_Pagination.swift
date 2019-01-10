import Foundation
/*
---

title: "Pagination"

---

### Simple Pagination
Here is an example for how to use **limit**. The default limit is 10. The maximum limit is 50.
`/platforms/?limit=33`

There is also an **offset**. This will start the list at position 22 and give 33 results.
`/platforms/?limit=33&offset=22`

{{% notice warning %}}
For ever tier, `offset` has a maximum value of 10,000 for server-resource reasons. While simple pagination is perfect for smaller datasets, we strongly recommend using the Scroll API documented below for everything else.
{{% /notice %}}

{{% notice info %}}
For the pro tier and above, you can increase the page limit to 3000 by prepending the request with `/pro`. For example: `/pro/platforms/?limit=3000`
{{% /notice %}}

### Scroll API

In order to bypass the limits of simple pagination and get blazing fast response times you need to use the `scroll` parameter. To use it you need to supply the scroll param to the query like this:
`/games/?order=rating&limit=50&scroll=1`. It will return results and include a couple of extra headers: **X-Next-Page** and **X-Count**.

**X-Next-Page** includes a special scroll path: `/games/scroll/cXVlcnlBbmRGZXRjaDsxOzE5OkhBck1wUUZsUnpPUDgwMGtDN0hSdEE7MDs=` This path actually never changes so you can repeatedly query the same URL to get the next page.

**X-Count** includes the total number of results: `1337` You can work out the number of pages with a simple calculation: `Math.ceil(X-Count / limit)`

{{% notice info %}}
There is a timeout on the Scroll API of **3 minutes** and for each subsequent scroll request it refreshes this timeout.
{{% /notice %}}
*/
