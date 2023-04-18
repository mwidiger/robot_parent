- Create style for homepage

- Navbar for top of site (should only have Robot Parent logo and text in upper left, and signin/
signout in upper right)

- Build child REST controller.  All operations require logged in user.  Should be contexted to "admin".  No "show" operation
  - Create Index operation.  Should list children for current user only.  No search required.  Users should be able to New/Edit/Delete from here.
  - Create New/Create operations.  Newly created children should be contexted to current user.  Return to index view after create.
  - Create Edit/Update operations.  Only children owned by current user should be allowed.  Return to index view after update.
  - Create Delete operation.  Only children owned by current user should be allowed.  Delete should return user to index view.

- Create chatGBT controller.  chatGBT isn't a RESTful resource, so simply define BotController and  have single action "ask_bot" which allows GET/POST.  "bot" is chatGBT, but can be extended to include API calls to other bots.
  - GET operation allows user to ask question in textarea.
  - POST operation takes question, adds child context before the question, and returns ask_bot view.  Textarea contains question that was previously asked.  New content shows question that was previous asked and response from bot.  No response initially as interface hasn't been created yet.

- Create chatGBT API interface (backend).  Wire up API interface to BotController POST action

