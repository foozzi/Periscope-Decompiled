.class final Lcom/localytics/android/Localytics$Log;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/Localytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Log"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;)I
    .locals 1

    .line 1610
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1612
    const-string v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1616
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 1622
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1624
    const-string v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 1628
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static e(Ljava/lang/String;)I
    .locals 1

    .line 1634
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1636
    const-string v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1640
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 1646
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1648
    const-string v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 1652
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static i(Ljava/lang/String;)I
    .locals 1

    .line 1658
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1660
    const-string v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1664
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 1670
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1672
    const-string v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 1676
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static v(Ljava/lang/String;)I
    .locals 1

    .line 1694
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1696
    const-string v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1700
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 1682
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1684
    const-string v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 1688
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static w(Ljava/lang/String;)I
    .locals 1

    .line 1730
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1732
    const-string v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1736
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 1718
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1720
    const-string v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 1724
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static w(Ljava/lang/Throwable;)I
    .locals 1

    .line 1706
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1708
    const-string v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 1712
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static wtf(Ljava/lang/String;)I
    .locals 1

    .line 1766
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1768
    const-string v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1772
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 1754
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1756
    const-string v0, "Localytics"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 1760
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static wtf(Ljava/lang/Throwable;)I
    .locals 1

    .line 1742
    sget-boolean v0, Lcom/localytics/android/Constants;->IS_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1744
    const-string v0, "Localytics"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 1748
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
