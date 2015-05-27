.class public Lo/eo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Landroid/os/Parcelable$Creator<Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->ถ()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->IG:F

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->IH:F

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->II:F

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-static {p1, v2}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/eo;->ᐡ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lo/eo;->ᓐ(I)[Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    return-object v0
.end method

.method public ᐡ(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 9

    invoke-static {p1}, Lo/ᴭ;->ˌ(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v3, :cond_0

    invoke-static {p1}, Lo/ᴭ;->ˉ(Landroid/os/Parcel;)I

    move-result v8

    invoke-static {v8}, Lo/ᴭ;->ᴬ(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1, v8}, Lo/ᴭ;->ʻ(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_2

    :pswitch_1
    invoke-static {p1, v8}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v5

    goto :goto_2

    :pswitch_2
    invoke-static {p1, v8}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v6

    goto :goto_2

    :pswitch_3
    invoke-static {p1, v8}, Lo/ᴭ;->ͺ(Landroid/os/Parcel;I)F

    move-result v7

    goto :goto_2

    :goto_1
    invoke-static {p1, v8}, Lo/ᴭ;->ˋ(Landroid/os/Parcel;I)V

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
    new-instance v8, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;-><init>(IFFF)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public ᓐ(I)[Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object v0
.end method
