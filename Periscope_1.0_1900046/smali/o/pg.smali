.class public Lo/pg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/pg$if;,
        Lo/pg$ˊ;
    }
.end annotation


# instance fields
.field private UG:Lo/pg$if;

.field private final pu:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lo/pg;->pu:Landroid/app/Application;

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, Lo/pg$if;

    iget-object v1, p0, Lo/pg;->pu:Landroid/app/Application;

    invoke-direct {v0, v1}, Lo/pg$if;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lo/pg;->UG:Lo/pg$if;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public ˊ(Lo/pg$ˊ;)Z
    .locals 1

    .line 51
    iget-object v0, p0, Lo/pg;->UG:Lo/pg$if;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/pg;->UG:Lo/pg$if;

    invoke-static {v0, p1}, Lo/pg$if;->ˊ(Lo/pg$if;Lo/pg$ˊ;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
