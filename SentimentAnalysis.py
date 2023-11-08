from feat import Detector
import cv2
import pickle

def analyze_emotions():
    # detector = Detector(
    #     face_model="retinaface",
    #     landmark_model="mobilefacenet",
    #     au_model='svm', # ['svm', 'logistic', 'jaanet']
    #     emotion_model="resmasknet",
    # )

    # # 保存
    # with open('detector.pkl', 'wb') as f:
    #     pickle.dump(detector, f)

    # 読み込み
    with open('detector.pkl', 'rb') as f:
        detector = pickle.load(f)

    # カメラを開く
    cap = cv2.VideoCapture(0)

    # 明るさを調整
    cap.set(cv2.CAP_PROP_BRIGHTNESS, 1)  # 明るさを調整（0.0から1.0の範囲で調整可能）



    # 画像をキャプチャする
    ret, frame = cap.read()

    # ウェブカメラが正常にオープンしたか確認
    if not cap.isOpened():
        print("カメラを開けません。")
        exit()

    # ウェブカメラから一枚の画像をキャプチャ
    ret, frame = cap.read()
    if not ret:
        print("フレームの取得に失敗しました。")
        exit()

    # 画像を保存する
    cv2.imwrite("face.jpg", frame)
    # カメラを閉じる
    cap.release()


    single_face_prediction = detector.detect_image("face.jpg")


    emotions = single_face_prediction.emotions


    for emotion, score in emotions.items():
        print(f"{emotion}: {score[0]}")

    """
    怒り（anger）
    嫌悪（disgust）
    恐れ（fear）
    幸福（happiness）
    悲しみ（sadness）
    驚き（surprise）
    無表情（neutral）
    """

if __name__ == "__main__":
    analyze_emotions()