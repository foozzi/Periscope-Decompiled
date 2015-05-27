.class public Lo/ọ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/common/internal/zzaa;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/common/internal/zzaa;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    iget v0, p0, Lcom/google/android/gms/common/internal/zzaa;->BH:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzaa;->DF:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzaa;->ᒵ()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzaa;->ᒸ()Z

    move-result v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzaa;->ᒹ()Z

    move-result v0

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ọ;->ˑ(Landroid/os/Parcel;)Lcom/google/android/gms/common/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ọ;->ᴱ(I)[Lcom/google/android/gms/common/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public ˑ(Landroid/os/Parcel;)Lcom/google/android/gms/common/internal/zzaa;
    .locals 13

    invoke-static {p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v6, :cond_0

    invoke-static {p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v12

    invoke-static {v12}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1, v12}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_2

    :pswitch_1
    invoke-static {p1, v12}, Lo/ᴭ;->ʿ(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v8

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Lo/โ;

    invoke-static {p1, v12, v0}, Lo/ᴭ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    move-object v9, v0

    goto :goto_2

    :pswitch_3
    invoke-static {p1, v12}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_2

    :pswitch_4
    invoke-static {p1, v12}, Lo/ᴭ;->ˎ(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_2

    :goto_1
    invoke-static {p1, v12}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

    :goto_2
    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v6, :cond_1

    new-instance v0, Lo/ᴭ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/ᴭ$if;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzaa;

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/zzaa;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V

    move-object v12, v0

    return-object v12

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public ᴱ(I)[Lcom/google/android/gms/common/internal/zzaa;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/common/internal/zzaa;

    return-object v0
.end method
