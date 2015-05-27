.class public Lo/ex;
.super Ljava/lang/Object;


# direct methods
.method public static ˊ(Lcom/google/android/gms/maps/model/VisibleRegion;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/VisibleRegion;->ถ()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->JC:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->JD:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->JE:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->JF:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/VisibleRegion;->JG:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, p2, v2}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method
