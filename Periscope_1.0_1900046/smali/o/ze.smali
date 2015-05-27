.class public Lo/ze;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static brk:Lo/zg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-string v0, "production"

    invoke-static {v0}, Lo/zg$if;->valueOf(Ljava/lang/String;)Lo/zg$if;

    move-result-object v0

    sput-object v0, Lo/ze;->brk:Lo/zg;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ld()Z
    .locals 2

    .line 15
    const-string v0, "release"

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static uH()Z
    .locals 2

    .line 11
    const-string v0, "release"

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static uI()Z
    .locals 2

    .line 19
    const-string v0, "release"

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static uJ()Z
    .locals 2

    .line 23
    const-string v0, "release"

    const-string v1, "beta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ˊ(Lo/aad;)Z
    .locals 1

    .line 27
    invoke-static {}, Lo/ze;->ld()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/aad;->vy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/ze;->uI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/ze;->uJ()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
