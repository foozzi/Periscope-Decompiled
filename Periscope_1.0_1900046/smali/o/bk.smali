.class public Lo/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/location/LocationSettingsStates;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/location/LocationSettingsStates;Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->ϝ()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->ถ()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->ϯ()Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->Ϲ()Z

    move-result v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->Ϯ()Z

    move-result v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->ϵ()Z

    move-result v0

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->С()Z

    move-result v0

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v2}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/bk;->ˆ(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationSettingsStates;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/bk;->ĺ(I)[Lcom/google/android/gms/location/LocationSettingsStates;

    move-result-object v0

    return-object v0
.end method

.method public ĺ(I)[Lcom/google/android/gms/location/LocationSettingsStates;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/LocationSettingsStates;

    return-object v0
.end method

.method public ˆ(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationSettingsStates;
    .locals 17

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v8, :cond_0

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_2

    :sswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_2

    :sswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_2

    :sswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_2

    :sswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_2

    :sswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_2

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

    :goto_2
    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v8, :cond_1

    new-instance v0, Lo/ᴭ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lo/ᴭ$if;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsStates;

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/LocationSettingsStates;-><init>(IZZZZZZ)V

    move-object/from16 v16, v0

    return-object v16

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method
