.class public Lo/ℷ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/common/internal/zzae;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/common/internal/zzae;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    iget v0, p0, Lcom/google/android/gms/common/internal/zzae;->BH:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzae;->ᓙ()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzae;->DF:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzae;->ᔬ()[Lcom/google/android/gms/common/api/Scope;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzae;->ᖧ()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzae;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ℷ;->ـ(Landroid/os/Parcel;)Lcom/google/android/gms/common/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ℷ;->ᴲ(I)[Lcom/google/android/gms/common/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method public ـ(Landroid/os/Parcel;)Lcom/google/android/gms/common/internal/zzae;
    .locals 15

    invoke-static/range {p1 .. p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

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

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᴭ;->ʿ(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v10

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-static {v1, v14, v0}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    move-object v11, v0

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᴭ;->ˈ(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v12

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᴭ;->ʾ(Landroid/os/Parcel;I)Ljava/lang/String;

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
    new-instance v0, Lcom/google/android/gms/common/internal/zzae;

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzae;-><init>(IILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object v14, v0

    return-object v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public ᴲ(I)[Lcom/google/android/gms/common/internal/zzae;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/common/internal/zzae;

    return-object v0
.end method
