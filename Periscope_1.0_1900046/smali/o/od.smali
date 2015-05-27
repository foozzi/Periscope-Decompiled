.class public Lo/od;
.super Lo/nz;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/od$if;
    }
.end annotation


# instance fields
.field public final RY:Lo/od$if;
    .annotation runtime Lo/go;
        value = "external_ids"
    .end annotation
.end field

.field public final RZ:J
    .annotation runtime Lo/go;
        value = "device_id_created_at"
    .end annotation
.end field

.field public final tM:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "language"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/nw;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    const-string v0, "syndicated_sdk_impression"

    invoke-direct {p0, v0, p1, p2, p3}, Lo/nz;-><init>(Ljava/lang/String;Lo/nw;J)V

    .line 45
    iput-object p4, p0, Lo/od;->tM:Ljava/lang/String;

    .line 46
    new-instance v0, Lo/od$if;

    invoke-direct {v0, p0, p5}, Lo/od$if;-><init>(Lo/od;Ljava/lang/String;)V

    iput-object v0, p0, Lo/od;->RY:Lo/od$if;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/od;->RZ:J

    .line 48
    return-void
.end method
