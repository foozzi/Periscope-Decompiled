.class Lo/ael;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bAP:Lo/aaq;

.field final synthetic bAQ:Lo/aek;


# direct methods
.method constructor <init>(Lo/aek;Lo/aaq;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lo/ael;->bAQ:Lo/aek;

    iput-object p2, p0, Lo/ael;->bAP:Lo/aaq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 190
    iget-object v0, p0, Lo/ael;->bAP:Lo/aaq;

    invoke-virtual {v0}, Lo/aaq;->release()V

    .line 191
    return-void
.end method
