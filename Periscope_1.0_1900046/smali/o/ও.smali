.class Lo/ও;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bj:Lo/ट;


# direct methods
.method constructor <init>(Lo/ट;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lo/ও;->Bj:Lo/ट;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 287
    iget-object v0, p0, Lo/ও;->Bj:Lo/ट;

    invoke-static {v0}, Lo/ट;->ˊ(Lo/ट;)Lo/ट$if;

    move-result-object v0

    invoke-interface {v0}, Lo/ट$if;->ȯ()V

    .line 288
    return-void
.end method
