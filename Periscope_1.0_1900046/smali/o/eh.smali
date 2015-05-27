.class public Lo/eh;
.super Ljava/lang/Object;


# direct methods
.method public static ˊ(Lcom/google/android/gms/maps/model/LatLng;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lo/ṯ;->ˍ(Landroid/os/Parcel;)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/LatLng;->ถ()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/ṯ;->ˎ(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->Jc:D

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ID)V

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->Jd:D

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lo/ṯ;->ˊ(Landroid/os/Parcel;ID)V

    invoke-static {p1, v3}, Lo/ṯ;->ـ(Landroid/os/Parcel;I)V

    return-void
.end method
