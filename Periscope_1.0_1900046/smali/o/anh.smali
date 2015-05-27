.class public abstract Lo/anh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/anh$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static ˊ(Lo/anh$if;)Lo/anh;
    .locals 2

    .line 10
    new-instance v0, Lo/anb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/anb;-><init>(Lo/anh$if;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ˊ(Lo/anh$if;Ljava/lang/String;)Lo/anh;
    .locals 1

    .line 14
    new-instance v0, Lo/anb;

    invoke-direct {v0, p0, p1}, Lo/anb;-><init>(Lo/anh$if;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ᵖ(Ljava/lang/String;)Lo/anh;
    .locals 2

    .line 18
    new-instance v0, Lo/anb;

    sget-object v1, Lo/anh$if;->bNL:Lo/anh$if;

    invoke-direct {v0, v1, p0}, Lo/anb;-><init>(Lo/anh$if;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract BV()Lo/anh$if;
.end method

.method public abstract BW()Ljava/lang/String;
.end method
