def publish_to_confluence(content, title):
    """Mock Confluence publisher"""
    print(f"[MOCK] Would publish to Confluence: {title}\nContent: {content[:100]}...")
    # Real implementation would use:
    # from atlassian import Confluence
    # conf = Confluence(url=..., username=...)
    # conf.update_page(...)