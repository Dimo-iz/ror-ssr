import { ApolloClient } from 'apollo-client';
import { HttpLink } from 'apollo-link-http';
import { InMemoryCache } from 'apollo-cache-inmemory';

const link = new HttpLink({ uri: '/graphql', credentials: 'same-origin', fetch });
const cache = new InMemoryCache();

const defaultOptions = {
  // mutate: {
  //   errorPolicy: 'all',
  // },
};

const client = new ApolloClient({ cache, link, defaultOptions });

export default client;
