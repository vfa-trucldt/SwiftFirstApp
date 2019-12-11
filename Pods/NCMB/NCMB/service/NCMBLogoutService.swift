/*
 Copyright 2019 FUJITSU CLOUD TECHNOLOGIES LIMITED All Rights Reserved.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */


struct NCMBLogoutService {

    var apiType : NCMBApiType {
        get {
            return NCMBApiType.logout
        }
    }

    func logOut(callback: @escaping (NCMBResult<NCMBResponse>) -> Void ) -> Void {
        let request : NCMBRequest = createGetRequest()
        let executor : NCMBRequestExecutorProtocol = NCMBRequestExecutorFactory.getInstance()
        executor.exec(request: request, callback: {(result: NCMBResult<NCMBResponse>) -> Void in
            callback(result)
        })
    }

    func createGetRequest() -> NCMBRequest {
        let request : NCMBRequest = NCMBRequest(
                apiType: apiType,
                method: NCMBHTTPMethod.get)
        return request
    }
}