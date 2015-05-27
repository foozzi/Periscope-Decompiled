.class public Lo/sy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sx;


# instance fields
.field private final Yr:Landroid/content/SharedPreferences;

.field private final Ys:Ljava/lang/String;

.field private final dV:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get directory before context has been set. Call Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lo/sy;->dV:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lo/sy;->Ys:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lo/sy;->dV:Landroid/content/Context;

    iget-object v1, p0, Lo/sy;->Ys:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lo/sy;->Yr:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method

.method public constructor <init>(Lo/pq;)V
    .locals 2

    .line 27
    invoke-virtual {p1}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/sy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public dG()Landroid/content/SharedPreferences;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/sy;->Yr:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/sy;->Yr:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Landroid/content/SharedPreferences$Editor;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 55
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
