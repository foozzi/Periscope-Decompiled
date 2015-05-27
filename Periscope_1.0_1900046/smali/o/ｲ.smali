.class public Lo/ｲ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ɽ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ｲ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u027d<TA;Lo/\uff8c;>;"
    }
.end annotation


# instance fields
.field private final jB:Lo/ɽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u027d<TA;Ljava/io/InputStream;>;"
        }
    .end annotation
.end field

.field private final jC:Lo/ɽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u027d<TA;Landroid/os/ParcelFileDescriptor;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ɽ;Lo/ɽ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u027d<TA;Ljava/io/InputStream;>;Lo/\u027d<TA;Landroid/os/ParcelFileDescriptor;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lo/ｲ;->jB:Lo/ɽ;

    .line 32
    iput-object p2, p0, Lo/ｲ;->jC:Lo/ɽ;

    .line 33
    return-void
.end method


# virtual methods
.method public ˎ(Ljava/lang/Object;II)Lo/Į;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)Lo/\u012e<Lo/\uff8c;>;"
        }
    .end annotation

    .line 37
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lo/ｲ;->jB:Lo/ɽ;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lo/ｲ;->jB:Lo/ɽ;

    invoke-interface {v0, p1, p2, p3}, Lo/ɽ;->ˎ(Ljava/lang/Object;II)Lo/Į;

    move-result-object v1

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lo/ｲ;->jC:Lo/ɽ;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lo/ｲ;->jC:Lo/ɽ;

    invoke-interface {v0, p1, p2, p3}, Lo/ɽ;->ˎ(Ljava/lang/Object;II)Lo/Į;

    move-result-object v2

    .line 46
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 47
    :cond_2
    new-instance v0, Lo/ｲ$if;

    invoke-direct {v0, v1, v2}, Lo/ｲ$if;-><init>(Lo/Į;Lo/Į;)V

    return-object v0

    .line 49
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
