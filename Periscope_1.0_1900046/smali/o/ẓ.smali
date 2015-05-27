.class public Lo/ẓ;
.super Lo/בֿ$if;


# instance fields
.field private Cc:Landroid/accounts/Account;

.field DE:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public static ˎ(Lo/בֿ;)Landroid/accounts/Account;
    .locals 7

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-interface {p0}, Lo/בֿ;->ᒱ()Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v2, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v0, "AccountAccessor"

    const-string v1, "Remote account accessor probably died"

    :try_start_1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_0
    :goto_0
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lo/ẓ;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lo/ẓ;->Cc:Landroid/accounts/Account;

    move-object v1, p1

    check-cast v1, Lo/ẓ;

    iget-object v1, v1, Lo/ẓ;->Cc:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ᒱ()Landroid/accounts/Account;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v0, p0, Lo/ẓ;->DE:I

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lo/ẓ;->Cc:Landroid/accounts/Account;

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/ẓ;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lo/ძ;->ᐝ(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lo/ẓ;->DE:I

    iget-object v0, p0, Lo/ẓ;->Cc:Landroid/accounts/Account;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
