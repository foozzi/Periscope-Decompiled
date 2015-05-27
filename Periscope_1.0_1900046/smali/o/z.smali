.class public Lo/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/internal/zzpi;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/internal/zzpi;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    iget v0, p0, Lcom/google/android/gms/internal/zzpi;->Gr:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpi;->ถ()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi;->Gs:Lcom/google/android/gms/internal/zzpg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpi;->ｓ()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi;->BJ:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpi;->ｦ()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/z;->י(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzpi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/z;->ヽ(I)[Lcom/google/android/gms/internal/zzpi;

    move-result-object v0

    return-object v0
.end method

.method public י(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzpi;
    .locals 15

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v7, :cond_0

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v14

    invoke-static {v14}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_2

    :sswitch_2
    sget-object v0, Lcom/google/android/gms/internal/zzpg;->CREATOR:Lo/y;

    move-object/from16 v1, p1

    invoke-static {v1, v14, v0}, Lo/ᴭ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpg;

    move-object v10, v0

    goto :goto_2

    :sswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᴭ;->ʿ(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v11

    goto :goto_2

    :sswitch_4
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-static {v1, v14, v0}, Lo/ᴭ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v12, v0

    goto :goto_2

    :sswitch_5
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᴭ;->ʿ(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v13

    goto :goto_2

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

    :goto_2
    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v7, :cond_1

    new-instance v0, Lo/ᴭ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lo/ᴭ$if;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzpi;

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpi;-><init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    move-object v14, v0

    return-object v14

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public ヽ(I)[Lcom/google/android/gms/internal/zzpi;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/zzpi;

    return-object v0
.end method
