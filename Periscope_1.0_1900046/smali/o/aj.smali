.class public Lo/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/internal/zzut;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/internal/zzut;Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v2

    iget v0, p0, Lcom/google/android/gms/internal/zzut;->BH:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-static {p1, v2}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/aj;->ᴵ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzut;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/aj;->נּ(I)[Lcom/google/android/gms/internal/zzut;

    move-result-object v0

    return-object v0
.end method

.method public ᴵ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzut;
    .locals 6

    invoke-static {p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v3, :cond_0

    invoke-static {p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v5

    invoke-static {v5}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-static {p1, v5}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_2

    :goto_1
    invoke-static {p1, v5}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

    :goto_2
    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v3, :cond_1

    new-instance v0, Lo/ᴭ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/ᴭ$if;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/zzut;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzut;-><init>(I)V

    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public נּ(I)[Lcom/google/android/gms/internal/zzut;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/zzut;

    return-object v0
.end method
