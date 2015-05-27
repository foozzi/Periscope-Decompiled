.class public Lo/ev;
.super Ljava/lang/Object;


# direct methods
.method public static ˊ(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->ถ()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->ﮉ()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->isVisible()Z

    move-result v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->っ()F

    move-result v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˊ(Landroid/os/Parcel;IF)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method
