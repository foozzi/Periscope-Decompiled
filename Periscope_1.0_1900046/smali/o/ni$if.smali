.class public Lo/ni$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˏ(Lo/mg;)Lcom/twitter/sdk/android/core/services/AccountService;
    .locals 1

    .line 162
    new-instance v0, Lo/mi;

    invoke-direct {v0, p1}, Lo/mi;-><init>(Lo/mg;)V

    invoke-virtual {v0}, Lo/mi;->aY()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    return-object v0
.end method
