.class public final Lo/չ$ˊ;
.super Lo/չ$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/չ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u02ca"
.end annotation


# instance fields
.field public final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/к;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lo/չ$if;-><init>(Ljava/lang/String;Lo/к;)V

    .line 88
    iput-object p1, p0, Lo/չ$ˊ;->contentType:Ljava/lang/String;

    .line 89
    return-void
.end method
