require 'rails_helper'

RSpec.describe "Veiculos", type: :request do

  describe "/veiculos" do
    describe "GET" do
      before do
        get "/veiculos"
      end

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "returns a json response" do
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end

    describe "POST" do
      it "return http created/json format" do
        post "/veiculos", params: { marca: "Ford", veiculo: "Fiesta", ano: "2020", descricao: "Novo", vendido: true } 
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end
  end

  describe "/veiculos/:id" do
    let!(:veiculo) { Veiculo.create(marca: "Ferrari") }

    describe "GET /veiculos/:id" do
      before do
        get "/veiculos/1"
      end

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "returns a json response" do
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end

    describe "PUT /veiculo/:id" do
      before do
        put "/veiculos/1"
      end

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "return json format" do
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end

    describe "DELETE /veiculo/:id" do
      before do
        delete "/veiculos/1"
      end

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "return json format" do
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end
  end
end
