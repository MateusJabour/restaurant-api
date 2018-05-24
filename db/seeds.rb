mateus_store = Store.find_or_create_by(id: SecureRandom.base64, name: 'Mateus store')
arthur_store = Store.find_or_create_by(id: SecureRandom.base64, name: 'Arthur Store')
Fish.find_or_create_by(id: SecureRandom.base64, name: 'Tilapia', price: 2222, store_id: mateus_store.id, description: 'delicia de peixe', status: true, image: 'blz')
Fish.find_or_create_by(id: SecureRandom.base64, name: 'Robalo', price: 2122, store_id: arthur_store.id, description: 'delicia de peixe cara', status: false, image: 'kkk')