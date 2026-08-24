.class public Lcom/jibo/apptoolkit/protocol/ConnectionException;
.super Ljava/lang/Exception;
.source "ConnectionException.java"


# static fields
.field public static final ERROR_AUTHORIZATION_PROBLEMS:Ljava/lang/String; = "Authorization problems. Please re-login."

.field public static final ERROR_BAD_REQUEST_OR_SOMETHING:Ljava/lang/String; = "Bad request or something. Please try again..."

.field public static final ERROR_CERTIFICATE_CREATION_PROBLEMS:Ljava/lang/String; = "Error connecting robot. Please enable Remote Control Mode."

.field public static final ERROR_CONNECTION_PROBLEMS:Ljava/lang/String; = "Something weird\'s happened along the way. Please try again..."

.field public static final ERROR_COULD_NOT_CONNECT_TO_ROBOT:Ljava/lang/String; = "Could not connect to the Jibo. Please try again..."

.field public static final ERROR_INTERNAL_SYSTEM:Ljava/lang/String; = "Something went wrong. Please try again..."

.field public static final ERROR_ROBOT_DROPPED_CONNECTION:Ljava/lang/String; = "Something weird\'s happened along the way. Please try again..."

.field public static final ERROR_SPOOFING_DETECTED:Ljava/lang/String; = "Spoofing detected!"

.field public static final ERROR_STATES_MISMATCH:Ljava/lang/String; = "State values do not match!"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
