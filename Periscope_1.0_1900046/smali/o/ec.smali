.class public Lo/ec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/maps/model/GroundOverlayOptions;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ถ()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->へ()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ゥ()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v0

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ト()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getBearing()F

    move-result v0

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->っ()F

    move-result v0

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->isVisible()Z

    move-result v0

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->リ()F

    move-result v0

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ヮ()F

    move-result v0

    const/16 v1, 0xb

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->ヶ()F

    move-result v0

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ec;->ᕀ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ec;->ڍ(I)[Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public ڍ(I)[Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    return-object v0
.end method

.method public ᕀ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 27

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v13, :cond_0

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v14

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ʿ(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v15

    goto/16 :goto_2

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lo/eg;

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-static {v1, v2, v0}, Lo/ᴭ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v16, v0

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v17

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v18

    goto :goto_2

    :pswitch_5
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lo/ee;

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-static {v1, v2, v0}, Lo/ᴭ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v19, v0

    goto :goto_2

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v20

    goto :goto_2

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v21

    goto :goto_2

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v22

    goto :goto_2

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v23

    goto :goto_2

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v24

    goto :goto_2

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v25

    goto :goto_2

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

    :goto_2
    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v13, :cond_1

    new-instance v0, Lo/ᴭ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lo/ᴭ$if;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v12, v25

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V

    move-object/from16 v26, v0

    return-object v26

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method