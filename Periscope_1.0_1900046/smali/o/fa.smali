.class public Lo/fa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/maps/StreetViewPanoramaOptions;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ถ()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ۉ()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ܟ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ے()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ܘ()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->پ()B

    move-result v0

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IB)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->յ()B

    move-result v0

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IB)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ڑ()B

    move-result v0

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IB)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ۅ()B

    move-result v0

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IB)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->ӟ()B

    move-result v0

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IB)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/fa;->ᵀ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/fa;->ᴴ(I)[Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    move-result-object v0

    return-object v0
.end method

.method public ᴴ(I)[Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-object v0
.end method

.method public ᵀ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 23

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v11, :cond_0

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Lo/eo;

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-static {v1, v2, v0}, Lo/ᴭ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-object v13, v0

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lo/eg;

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-static {v1, v2, v0}, Lo/ᴭ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    move-object v15, v0

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lo/ᴭ;->ʼ(Landroid/os/Parcel;I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lo/ᴭ;->ˏ(Landroid/os/Parcel;I)B

    move-result v17

    goto :goto_2

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lo/ᴭ;->ˏ(Landroid/os/Parcel;I)B

    move-result v18

    goto :goto_2

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lo/ᴭ;->ˏ(Landroid/os/Parcel;I)B

    move-result v19

    goto :goto_2

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lo/ᴭ;->ˏ(Landroid/os/Parcel;I)B

    move-result v20

    goto :goto_2

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lo/ᴭ;->ˏ(Landroid/os/Parcel;I)B

    move-result v21

    goto :goto_2

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

    :goto_2
    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v11, :cond_1

    new-instance v0, Lo/ᴭ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lo/ᴭ$if;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;-><init>(ILcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBB)V

    move-object/from16 v22, v0

    return-object v22

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
    .end packed-switch
.end method
