.class public Lo/ei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/maps/model/MarkerOptions;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->ถ()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->ے()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->乁()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->丫()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->ヮ()F

    move-result v0

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->ヶ()F

    move-result v0

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->爫()Z

    move-result v0

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->ﬤ()Z

    move-result v0

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v0

    const/16 v1, 0xb

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->טּ()F

    move-result v0

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->סּ()F

    move-result v0

    const/16 v1, 0xd

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAlpha()F

    move-result v0

    const/16 v1, 0xe

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ei;->יִ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ei;->ฯ(I)[Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method

.method public ฯ(I)[Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/maps/model/MarkerOptions;

    return-object v0
.end method

.method public יִ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 31

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v15

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

    const/16 v26, 0x0

    const/high16 v27, 0x3f000000    # 0.5f

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v15, :cond_0

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v16

    goto/16 :goto_2

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lo/eg;

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-static {v1, v2, v0}, Lo/ᴭ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v17, v0

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ʿ(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v20

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v21

    goto :goto_2

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v22

    goto :goto_2

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v23

    goto :goto_2

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v24

    goto :goto_2

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v25

    goto :goto_2

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v26

    goto :goto_2

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v27

    goto :goto_2

    :pswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v28

    goto :goto_2

    :pswitch_d
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v29

    goto :goto_2

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

    :goto_2
    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v15, :cond_1

    new-instance v0, Lo/ᴭ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lo/ᴭ$if;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFF)V

    move-object/from16 v30, v0

    return-object v30

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
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
