.class public Lo/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/internal/zzpk;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/internal/zzpk;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk;->ｸ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk;->ถ()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk;->ｹ()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk;->ｳ()S

    move-result v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IS)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk;->getLatitude()D

    move-result-wide v0

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ID)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk;->getLongitude()D

    move-result-wide v0

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ID)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk;->ｷ()F

    move-result v0

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk;->ｽ()I

    move-result v0

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk;->ﾁ()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpk;->ﾊ()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/aa;->ٴ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzpk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/aa;->זּ(I)[Lcom/google/android/gms/internal/zzpk;

    move-result-object v0

    return-object v0
.end method

.method public ٴ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzpk;
    .locals 29

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v14, :cond_0

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v28

    invoke-static/range {v28 .. v28}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v15

    goto :goto_2

    :sswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ʽ(Landroid/os/Parcel;I)J

    move-result-wide v24

    goto :goto_2

    :sswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ᐝ(Landroid/os/Parcel;I)S

    move-result v18

    goto :goto_2

    :sswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ι(Landroid/os/Parcel;I)D

    move-result-wide v19

    goto :goto_2

    :sswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ι(Landroid/os/Parcel;I)D

    move-result-wide v21

    goto :goto_2

    :sswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v23

    goto :goto_2

    :sswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v17

    goto :goto_2

    :sswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v26

    goto :goto_2

    :sswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v27

    goto :goto_2

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

    :goto_2
    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v14, :cond_1

    new-instance v0, Lo/ᴭ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lo/ᴭ$if;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzpk;

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move/from16 v9, v23

    move-wide/from16 v10, v24

    move/from16 v12, v26

    move/from16 v13, v27

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/zzpk;-><init>(ILjava/lang/String;ISDDFJII)V

    move-object/from16 v28, v0

    return-object v28

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public זּ(I)[Lcom/google/android/gms/internal/zzpk;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/zzpk;

    return-object v0
.end method
