GET /profiles

{
  "data": [
    {
      "type": "profiles",
      "id": "abc123",
      "attributes": {
        "name": "JSON API paints my bikeshed!",
        "description": "JSON API paints my bikeshed!"
        "avatars": [
          {
            "url": "https://www.google.com/image.jpg"
          }
        ],
        "url": "https://www.google.com",
        "social_links": {
          "facebook": "https://www.google.com",
          "twitter": "https://www.google.com",
          "linkedin": "https://www.google.com"
        }
      },
      "relationships": {
        "system_owned_tools": {
          "data": [
            {
              "type": "tools",
              "id": "abc123"
            }
          ]
        },
        "projects": {
          "data": [
            {
              "type": "projects",
              "id": "abc123"
            }
          ]
        }
      }
    }
  ]
}

GET /tools

{
  "data": [
    {
      "type": "tools",
      "id": "abc123",
      "attributes": {
        "name": "JSON API paints my bikeshed!",
        "description": "JSON API paints my bikeshed!"
        "url": "https://www.google.com",
        "social_links": {
          "facebook": "https://www.google.com",
          "twitter": "https://www.google.com",
          "linkedin": "https://www.google.com"
        }
      },
      "relationships": {
        "system_creator": {
          "data": {
            "type": "profiles",
            "id": "abc123"
          }
        },
        "project_components": {
          data: [
            {
              "id": "abc123",
              "type": "project_components"
            }
          ]
        }
      }
    }
  ]
}


GET /projects

{
  "data": [
    {
      "type": "projects",
      "id": "abc123",
      "attributes": {
        "name": "JSON API paints my bikeshed!",
        "description": "JSON API paints my bikeshed!"
        "images": [
          {
            "url": "https://www.google.com/image.jpg"
          }
        ],
        "avatars": [
          {
            "url": "https://www.google.com/image.jpg"
          }
        ]
      },
      "relationships": {
        "project_components": {
          "data": [
            {
              "type": "project_components",
              "id": "abc123"
            }
          ]
        },
        "creator": {
          "data": {
            "type": "profiles",
            "id": "abc123"
          }
        }
      }
    }
  ]
}

No use case for this endpoint currently, only included here because we need a data definition for the project_components.
/projects/:id/components

{
  "data": [
    {
      "type": "project_components",
      "id": "abc123",
      "attributes": {
        "name": "Design & Development",
        "description": "JSON API paints my bikeshed!"
        "images": [
          {
            "url": "https://www.google.com/image.jpg"
          }
        ]
      },
      "relationships": {
        "tools": {
          "data": [
            {
              "type": "tools",
              "id": "abc123"
            }
          ]
        },
        "project": {
          "data": {
            "type": "projects",
            "id": "abc123"
          }
        }
      }
    }
  ]
}
