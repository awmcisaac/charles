from baseline import Baseline

class RetrievalSystem(Baseline):
    
    def __init__(self):
        super.__init__()

    def get_topic_terms(self, queries):
        '''
        filter for stopwords
        return dictionary of topic_num: [term for term in title]
        '''
        with open(queries, 'r') as f:
            topics = f.read()
        soup = BeautifulSoup(topics, 'html.parser')
        head = soup.contents[2]
        topics = [item for item in head.children][1::2]
        nums = [i.num.contents[0] for i in topics]
        titles = [i.title.contents[0].split() for i in topics]
        query_terms = {num: title for num, title in zip(nums, titles)}

        return query_terms

    def equivalence_classes(self):
        return None

    def query_construction(self):
        return None
