.class Lo/aeq;
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
.field final synthetic bAQ:Lo/aek;


# direct methods
.method constructor <init>(Lo/aek;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lo/aeq;->bAQ:Lo/aek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 504
    iget-object v0, p0, Lo/aeq;->bAQ:Lo/aek;

    invoke-static {v0}, Lo/aek;->ˏ(Lo/aek;)Lo/aek$if;

    move-result-object v0

    invoke-interface {v0}, Lo/aek$if;->yk()V

    .line 505
    return-void
.end method
