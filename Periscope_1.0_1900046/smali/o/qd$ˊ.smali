.class final Lo/qd$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/qd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02ca"
.end annotation


# instance fields
.field private final Vv:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lo/qd$ˊ;->Vv:Landroid/os/IBinder;

    .line 143
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/qd$ˊ;->Vv:Landroid/os/IBinder;

    return-object v0
.end method

.method public cr()Z
    .locals 8

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 172
    const/4 v5, 0x0

    .line 174
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lo/qd$ˊ;->Vv:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 177
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 178
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 184
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 186
    goto :goto_1

    .line 179
    :catch_0
    move-exception v6

    .line 180
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not get parcel from Google Play Service to capture Advertising limitAdTracking"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 186
    goto :goto_1

    .line 184
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v7

    .line 187
    :goto_1
    return v5
.end method

.method public getId()Ljava/lang/String;
    .locals 8

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 153
    const/4 v5, 0x0

    .line 155
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lo/qd$ˊ;->Vv:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 157
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 158
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v5, v0

    .line 163
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 165
    goto :goto_0

    .line 159
    :catch_0
    move-exception v6

    .line 160
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Could not get parcel from Google Play Service to capture AdvertisingId"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 165
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v7

    .line 166
    :goto_0
    return-object v5
.end method
