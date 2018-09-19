<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Validator;

class StudentController extends Controller
{

    public $successStatus = "1";
    public $successMessage = "Success";
    public $successCode = "200";

    public $errorcode = "400";
    public $errorStatus = "0";
    public $errorMessage = "error";

    public $successCreatedCode = "201";

    public function index(Request $request)
    {
        $student = DB::table("students")->get();
        if ($student) {
            if (count($student) <= 0) {
                return response()->json([
                    "data" => $student,
                    "status" => $this->successStatus,
                    "code" => $this->successCode,
                    "message" => "Student is Empty",
                ], 200);
            } else {
                return response()->json([
                    "data" => $student,
                    "status" => $this->successStatus,
                    "code" => $this->successCode,
                    "message" => $this->successMessage,
                ]);
            }
        } else {
            return response()->json([
                "status" => $this->errorStatus,
                "code" => $this->errorcode,
                "message" => "Failed to find Student",
            ]);
        }
    }
    public function show(Request $request, $id)
    {
        $student = DB::table("students")->where("id", $id)->get();
        if ($student) {
            if (count($student) <= 0) {
                return response()->json([
                    "data" => $student,
                    "status" => $this->successStatus,
                    "code" => $this->successCode,
                    "message" => "Student not found for this id",
                ], 200);
            } else {
                return response()->json([
                    "data" => $student,
                    "status" => $this->successStatus,
                    "code" => $this->successCode,
                    "message" => $this->successMessage,
                ]);
            }
        } else {
            return response()->json([
                "status" => $this->errorStatus,
                "code" => $this->errorcode,
                "message" => "Failed to find Student",
            ]);
        }
    }
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            "name" => "required",
            "email" => "required",
            "phone" => "required|numeric",
        ]);

        if ($validator->fails()) {
            return response()->json(["error" => $validator->errors()], 401);
        } else {
            $name = $request->input("name");
            $email = $request->input("email");
            $phone = $request->input("phone");
            $date = date("Y-m-d H:i:s");
            $inseted_student_id = DB::table("students")->insertGetId([
                "name" => $name,
                "email" => $email,
                "phone" => $phone,
                'created_at' => $date,
                'updated_at' => $date,
            ]);

            if ($inseted_student_id) {
                $student = DB::table("students")->where("id", $inseted_student_id)->get();
                if ($student) {
                    return response()->json([
                        "data" => $student,
                        "status" => $this->successStatus,
                        "code" => $this->successCode,
                        "message" => "Student Created successfully",
                    ], 200);
                } else {
                    return response()->json([
                        'status' => $this->errorStatus,
                        'code' => $this->errorcode,
                        'message' => "Student Not Inserted"], 400);
                }
            } else {
                return response()->json([
                    'status' => $this->errorStatus,
                    'code' => $this->errorcode,
                    'message' => "Failed to add Student"]);
            }

        }

    }
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            "name" => "required",
            "email" => "required",
            "phone" => "required|numeric",
        ]);

        if ($validator->fails()) {
            return response()->json(["error" => $validator->errors()], 401);
        } else {
            $name = $request->input("name");
            $email = $request->input("email");
            $phone = $request->input("phone");
            $date = date("Y-m-d H:i:s");
            $inseted_student_result = DB::table("students")->where("id", $id)->update([
                "name" => $name,
                "email" => $email,
                "phone" => $phone,
            ]);

            if ($inseted_student_result == '1') {
                $student = DB::table("students")->where("id", $id)->get();
                if ($student) {
                    return response()->json([
                        "data" => $student,
                        "status" => $this->successStatus,
                        "code" => $this->successCode,
                        "message" => "Student Updated successfully",
                    ], 200);
                } else {
                    return response()->json([
                        'status' => $this->errorStatus,
                        'code' => $this->errorcode,
                        'message' => "Student Not Updated"], 400);
                }
            } else {
                return response()->json([
                    'status' => $this->errorStatus,
                    'code' => $this->errorcode,
                    'message' => "Failed to Update Student"]);
            }

        }
    }
    public function delete(Request $request, $id)
    {
        $student_get = DB::table("students")->where("id", $id)->get();
        if ($student_get) {
            if (count($student_get) <= 0) {
                return response()->json([
                    'status' => $this->successStatus,
                    'code' => $this->successCode,
                    'message' => "Student Not Found for this id"], $this->successCode);
            } else {
                $student_delete_id = DB::table("students")->where("id", $id)->delete();
                if ($student_delete_id) {
                    return response()->json(['data' => null,
                        'status' => $this->successStatus,
                        'code' => "204",
                        'message' => "Student Deleted Successfully"], $this->successCode);
                } else {
                    return response()->json(['status' => $this->errorStatus,
                        'code' => $this->errorcode,
                        'message' => "Student Not Deleted"], $this->successCode);
                }
            }
        } else {
            return response()->json([
                'status' => $this->errorStatus,
                'code' => $this->errorcode,
                'message' => "Failed to Delete Student"]);
        }
    }
}
